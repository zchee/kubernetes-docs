// Copyright 2018 The kubernetes-docs Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package scheme

type Kubectl struct {
	Name            string            `yaml:"name"`
	Synopsis        string            `yaml:"synopsis,omitempty"`
	Description     string            `yaml:"description,omitempty"`
	Options         []Option          `yaml:"options,omitempty"`
	InheritedOption []InheritedOption `yaml:"inherited_options,omitempty"`
	Example         string            `yaml:"example,omitempty"`
	SeeAlso         []string          `yaml:"see_also,omitempty"`
}

type Option struct {
	Name         string `yaml:"name"`
	DefaultValue string `yaml:"default_value,omitempty"`
	Usage        string `yaml:"usage,omitempty"`
	Shorthand    string `yaml:"shorthand,omitempty"`
}

type InheritedOption struct {
	Name         string `yaml:"name"`
	DefaultValue string `yaml:"default_value,omitempty"`
	Usage        string `yaml:"usage,omitempty"`
	Shorthand    string `yaml:"shorthand,omitempty"`
}
