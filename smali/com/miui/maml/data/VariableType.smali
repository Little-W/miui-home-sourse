.class public final enum Lcom/miui/maml/data/VariableType;
.super Ljava/lang/Enum;
.source "VariableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/VariableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/VariableType;

.field public static final enum BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum BYTE_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum CHAR_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum FLOAT_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum INT_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum INVALID:Lcom/miui/maml/data/VariableType;

.field public static final enum LONG_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum NUM:Lcom/miui/maml/data/VariableType;

.field public static final enum NUM_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum OBJ:Lcom/miui/maml/data/VariableType;

.field public static final enum OBJ_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum SHORT_ARR:Lcom/miui/maml/data/VariableType;

.field public static final enum STR:Lcom/miui/maml/data/VariableType;

.field public static final enum STR_ARR:Lcom/miui/maml/data/VariableType;


# instance fields
.field public final mTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->INVALID:Lcom/miui/maml/data/VariableType;

    .line 6
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "NUM"

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    .line 7
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "STR"

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    .line 8
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "OBJ"

    const-class v3, Ljava/lang/Object;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->OBJ:Lcom/miui/maml/data/VariableType;

    .line 10
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "NUM_ARR"

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    .line 11
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "DOUBLE_ARR"

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

    .line 12
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "FLOAT_ARR"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->FLOAT_ARR:Lcom/miui/maml/data/VariableType;

    .line 13
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "INT_ARR"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->INT_ARR:Lcom/miui/maml/data/VariableType;

    .line 14
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "SHORT_ARR"

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->SHORT_ARR:Lcom/miui/maml/data/VariableType;

    .line 15
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "BYTE_ARR"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->BYTE_ARR:Lcom/miui/maml/data/VariableType;

    .line 16
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "LONG_ARR"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->LONG_ARR:Lcom/miui/maml/data/VariableType;

    .line 17
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "BOOLEAN_ARR"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

    .line 18
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "CHAR_ARR"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    .line 20
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "STR_ARR"

    const-class v3, Ljava/lang/String;

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    .line 21
    new-instance v0, Lcom/miui/maml/data/VariableType;

    const-string v1, "OBJ_ARR"

    const-class v3, Ljava/lang/Object;

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v3}, Lcom/miui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    const/16 v0, 0xf

    .line 4
    new-array v0, v0, [Lcom/miui/maml/data/VariableType;

    sget-object v1, Lcom/miui/maml/data/VariableType;->INVALID:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/data/VariableType;->OBJ:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/maml/data/VariableType;->DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/maml/data/VariableType;->FLOAT_ARR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/maml/data/VariableType;->INT_ARR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/maml/data/VariableType;->SHORT_ARR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/maml/data/VariableType;->BYTE_ARR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/maml/data/VariableType;->LONG_ARR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/miui/maml/data/VariableType;->BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    aput-object v1, v0, v15

    sput-object v0, Lcom/miui/maml/data/VariableType;->$VALUES:[Lcom/miui/maml/data/VariableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/miui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    return-void
.end method

.method public static parseType(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;
    .locals 1

    const-string v0, "number"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object p0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_0
    const-string v0, "string"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object p0, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_1
    const-string v0, "object"

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    sget-object p0, Lcom/miui/maml/data/VariableType;->OBJ:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_2
    const-string v0, "number[]"

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    sget-object p0, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_3
    const-string v0, "double[]"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    sget-object p0, Lcom/miui/maml/data/VariableType;->DOUBLE_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_4
    const-string v0, "float[]"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    sget-object p0, Lcom/miui/maml/data/VariableType;->FLOAT_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_5
    const-string v0, "int[]"

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    sget-object p0, Lcom/miui/maml/data/VariableType;->INT_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_6
    const-string v0, "short[]"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    sget-object p0, Lcom/miui/maml/data/VariableType;->SHORT_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_7
    const-string v0, "byte[]"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    sget-object p0, Lcom/miui/maml/data/VariableType;->BYTE_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_8
    const-string v0, "long[]"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    sget-object p0, Lcom/miui/maml/data/VariableType;->LONG_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_9
    const-string v0, "boolean[]"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    sget-object p0, Lcom/miui/maml/data/VariableType;->BOOLEAN_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_a
    const-string v0, "char[]"

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    sget-object p0, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_b
    const-string v0, "string[]"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 49
    sget-object p0, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    :cond_c
    const-string v0, "object[]"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 51
    sget-object p0, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    return-object p0

    .line 53
    :cond_d
    sget-object p0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/VariableType;
    .locals 1

    .line 4
    const-class v0, Lcom/miui/maml/data/VariableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/VariableType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/VariableType;
    .locals 1

    .line 4
    sget-object v0, Lcom/miui/maml/data/VariableType;->$VALUES:[Lcom/miui/maml/data/VariableType;

    invoke-virtual {v0}, [Lcom/miui/maml/data/VariableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/data/VariableType;

    return-object v0
.end method


# virtual methods
.method public isArray()Z
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/miui/maml/data/VariableType;->OBJ_ARR:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumber()Z
    .locals 1

    .line 64
    sget-object v0, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumberArray()Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/miui/maml/data/VariableType;->CHAR_ARR:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumberOrStringArray()Z
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM_ARR:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lcom/miui/maml/data/VariableType;->STR_ARR:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
