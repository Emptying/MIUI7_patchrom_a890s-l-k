.class public Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "PCUPhoneNumberFormatter.java"


# static fields
.field private static final MAX_HYPEN_POSITION:I = 0x8

.field private static final NEED_HYPEN_POSITION:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findCodePosition(Ljava/lang/String;)I
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 63
    const/16 v4, 0x27

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "001"

    aput-object v4, v0, v3

    const/4 v4, 0x1

    const-string v5, "002"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "008"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "011"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "012"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "015"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "016"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "017"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "018"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "019"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, "080"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, "010"

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string v5, "070"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, "0505"

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const-string v5, "050"

    aput-object v5, v0, v4

    const/16 v4, 0xf

    const-string v5, "060"

    aput-object v5, v0, v4

    const/16 v4, 0x10

    const-string v5, "02"

    aput-object v5, v0, v4

    const/16 v4, 0x11

    const-string v5, "031"

    aput-object v5, v0, v4

    const/16 v4, 0x12

    const-string v5, "032"

    aput-object v5, v0, v4

    const/16 v4, 0x13

    const-string v5, "033"

    aput-object v5, v0, v4

    const/16 v4, 0x14

    const-string v5, "041"

    aput-object v5, v0, v4

    const/16 v4, 0x15

    const-string v5, "042"

    aput-object v5, v0, v4

    const/16 v4, 0x16

    const-string v5, "043"

    aput-object v5, v0, v4

    const/16 v4, 0x17

    const-string v5, "044"

    aput-object v5, v0, v4

    const/16 v4, 0x18

    const-string v5, "051"

    aput-object v5, v0, v4

    const/16 v4, 0x19

    const-string v5, "052"

    aput-object v5, v0, v4

    const/16 v4, 0x1a

    const-string v5, "053"

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    const-string v5, "054"

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    const-string v5, "055"

    aput-object v5, v0, v4

    const/16 v4, 0x1d

    const-string v5, "061"

    aput-object v5, v0, v4

    const/16 v4, 0x1e

    const-string v5, "062"

    aput-object v5, v0, v4

    const/16 v4, 0x1f

    const-string v5, "063"

    aput-object v5, v0, v4

    const/16 v4, 0x20

    const-string v5, "064"

    aput-object v5, v0, v4

    const/16 v4, 0x21

    const-string v5, "00700"

    aput-object v5, v0, v4

    const/16 v4, 0x22

    const-string v5, "00770"

    aput-object v5, v0, v4

    const/16 v4, 0x23

    const-string v5, "00300"

    aput-object v5, v0, v4

    const/16 v4, 0x24

    const-string v5, "00365"

    aput-object v5, v0, v4

    const/16 v4, 0x25

    const-string v5, "005"

    aput-object v5, v0, v4

    const/16 v4, 0x26

    const-string v5, "00345"

    aput-object v5, v0, v4

    .line 70
    .local v0, "hypenCodeList":[Ljava/lang/String;
    array-length v2, v0

    .line 71
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 72
    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_1

    .line 79
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v3, v2

    .line 75
    goto :goto_1

    .line 71
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static findHypenPosition(Ljava/lang/String;II)I
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "codePos"    # I
    .param p2, "maxLen"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 85
    .local v0, "length":I
    sub-int v1, v0, p1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    sub-int v1, v0, p1

    if-le v1, p2, :cond_1

    .line 86
    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    return v1

    :cond_1
    add-int/lit8 v1, v0, -0x4

    goto :goto_0
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 11
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    const/16 v10, 0x23

    const/4 v9, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 16
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_0

    .line 17
    add-int/lit8 v7, v3, 0x1

    invoke-interface {p0, v3, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 23
    .local v4, "length":I
    const/4 v7, 0x3

    if-ge v4, v7, :cond_5

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "head":I
    move v6, v4

    .line 37
    .local v6, "tail":I
    :goto_1
    invoke-interface {p0, v1, v6}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;->findCodePosition(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "codePosition":I
    const/16 v7, 0x8

    invoke-static {v5, v0, v7}, Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;->findHypenPosition(Ljava/lang/String;II)I

    move-result v2

    .line 42
    .local v2, "hypenPosition":I
    if-lez v2, :cond_3

    .line 43
    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 51
    :cond_2
    add-int v7, v1, v2

    invoke-static {p0, v7}, Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;->insertHypen(Landroid/text/Editable;I)V

    .line 56
    :cond_3
    :goto_2
    :sswitch_0
    if-lez v0, :cond_4

    .line 58
    add-int v7, v1, v0

    invoke-static {p0, v7}, Lcom/pantech/pcu/telephony/PCUPhoneNumberFormatter;->insertHypen(Landroid/text/Editable;I)V

    .line 59
    :cond_4
    return-void

    .line 27
    .end local v0    # "codePosition":I
    .end local v1    # "head":I
    .end local v2    # "hypenPosition":I
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "tail":I
    :cond_5
    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_6

    .line 28
    const/4 v1, 0x1

    .line 34
    .restart local v1    # "head":I
    :goto_3
    const/4 v7, 0x2

    if-ge v1, v7, :cond_7

    add-int/lit8 v7, v4, -0x1

    invoke-interface {p0, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_7

    add-int/lit8 v6, v4, -0x1

    .restart local v6    # "tail":I
    :goto_4
    goto :goto_1

    .line 32
    .end local v1    # "head":I
    .end local v6    # "tail":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "head":I
    goto :goto_3

    :cond_7
    move v6, v4

    .line 34
    goto :goto_4

    .line 48
    .restart local v0    # "codePosition":I
    .restart local v2    # "hypenPosition":I
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "tail":I
    :sswitch_1
    const/16 v7, 0xa

    if-ge v4, v7, :cond_2

    goto :goto_2

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private static insertCode(Landroid/text/Editable;I)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "position"    # I

    .prologue
    .line 92
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    invoke-interface {p0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 98
    :cond_2
    const-string v0, ")"

    invoke-interface {p0, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private static insertHypen(Landroid/text/Editable;I)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "position"    # I

    .prologue
    .line 102
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    invoke-interface {p0, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    .line 108
    :cond_2
    const-string v0, "-"

    invoke-interface {p0, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method
