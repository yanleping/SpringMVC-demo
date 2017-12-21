package net;

public enum TypeEnum {
    cilin(1,"cilin"),
    pinyin(2,"pinyin"),
    charBased(3,"charBased"),
    concept(4,"concept"),
    phrase(5,"phrase"),
    morpho(6,"morpho"),
    editDistance(7,"editDistance"),
    gregorEditDistance(8,"gregorEditDistance"),
    standardEdit(9,"standardEdit"),
    tendency(10,"tendency");

    private int type;
    private String desc;

    TypeEnum(int type,String desc){
        this.type = type;
        this.desc = desc;
    }

}
