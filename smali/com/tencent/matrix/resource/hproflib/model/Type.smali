.class public final enum Lcom/tencent/matrix/resource/hproflib/model/Type;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/matrix/resource/hproflib/model/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/matrix/resource/hproflib/model/Type;

.field public static final enum BOOLEAN:Lcom/tencent/matrix/resource/hproflib/model/Type;

.field public static final enum BYTE:Lcom/tencent/matrix/resource/hproflib/model/Type;

.field public static final enum CHAR:Lcom/tencent/matrix/resource/hproflib/model/Type;

.field public static final enum DOUBLE:Lcom/tencent/matrix/resource/hproflib/model/Type;

.field public static final enum FLOAT:Lcom/tencent/matrix/resource/hproflib/model/Type;

.field public static final enum INT:Lcom/tencent/matrix/resource/hproflib/model/Type;

.field public static final enum LONG:Lcom/tencent/matrix/resource/hproflib/model/Type;

.field public static final enum OBJECT:Lcom/tencent/matrix/resource/hproflib/model/Type;

.field public static final enum SHORT:Lcom/tencent/matrix/resource/hproflib/model/Type;

.field private static sTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/matrix/resource/hproflib/model/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    const-string v1, "OBJECT"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/tencent/matrix/resource/hproflib/model/Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->OBJECT:Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 28
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    const-string v1, "BOOLEAN"

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4, v5}, Lcom/tencent/matrix/resource/hproflib/model/Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->BOOLEAN:Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 29
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    const-string v1, "CHAR"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v3, v6, v3}, Lcom/tencent/matrix/resource/hproflib/model/Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->CHAR:Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 30
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    const-string v1, "FLOAT"

    const/4 v7, 0x3

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8, v4}, Lcom/tencent/matrix/resource/hproflib/model/Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->FLOAT:Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 31
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    const-string v1, "DOUBLE"

    const/4 v9, 0x7

    const/16 v10, 0x8

    invoke-direct {v0, v1, v4, v9, v10}, Lcom/tencent/matrix/resource/hproflib/model/Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->DOUBLE:Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 32
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v6, v10, v5}, Lcom/tencent/matrix/resource/hproflib/model/Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->BYTE:Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 33
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    const-string v1, "SHORT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v8, v11, v3}, Lcom/tencent/matrix/resource/hproflib/model/Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->SHORT:Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 34
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    const-string v1, "INT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v9, v12, v4}, Lcom/tencent/matrix/resource/hproflib/model/Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->INT:Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 35
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    const-string v1, "LONG"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v10, v12, v10}, Lcom/tencent/matrix/resource/hproflib/model/Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->LONG:Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 26
    new-array v0, v11, [Lcom/tencent/matrix/resource/hproflib/model/Type;

    sget-object v1, Lcom/tencent/matrix/resource/hproflib/model/Type;->OBJECT:Lcom/tencent/matrix/resource/hproflib/model/Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/matrix/resource/hproflib/model/Type;->BOOLEAN:Lcom/tencent/matrix/resource/hproflib/model/Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/matrix/resource/hproflib/model/Type;->CHAR:Lcom/tencent/matrix/resource/hproflib/model/Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/matrix/resource/hproflib/model/Type;->FLOAT:Lcom/tencent/matrix/resource/hproflib/model/Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/matrix/resource/hproflib/model/Type;->DOUBLE:Lcom/tencent/matrix/resource/hproflib/model/Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/matrix/resource/hproflib/model/Type;->BYTE:Lcom/tencent/matrix/resource/hproflib/model/Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/matrix/resource/hproflib/model/Type;->SHORT:Lcom/tencent/matrix/resource/hproflib/model/Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/matrix/resource/hproflib/model/Type;->INT:Lcom/tencent/matrix/resource/hproflib/model/Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/tencent/matrix/resource/hproflib/model/Type;->LONG:Lcom/tencent/matrix/resource/hproflib/model/Type;

    aput-object v1, v0, v10

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->$VALUES:[Lcom/tencent/matrix/resource/hproflib/model/Type;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->sTypeMap:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/tencent/matrix/resource/hproflib/model/Type;->values()[Lcom/tencent/matrix/resource/hproflib/model/Type;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 45
    sget-object v4, Lcom/tencent/matrix/resource/hproflib/model/Type;->sTypeMap:Ljava/util/Map;

    iget v5, v3, Lcom/tencent/matrix/resource/hproflib/model/Type;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/tencent/matrix/resource/hproflib/model/Type;->mId:I

    .line 51
    iput p4, p0, Lcom/tencent/matrix/resource/hproflib/model/Type;->mSize:I

    return-void
.end method

.method public static getClassNameOfPrimitiveArray(Lcom/tencent/matrix/resource/hproflib/model/Type;)Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type$1;->$SwitchMap$com$tencent$matrix$resource$hproflib$model$Type:[I

    invoke-virtual {p0}, Lcom/tencent/matrix/resource/hproflib/model/Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "OBJECT type is not a primitive type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "long[]"

    return-object p0

    :pswitch_1
    const-string p0, "int[]"

    return-object p0

    :pswitch_2
    const-string p0, "short[]"

    return-object p0

    :pswitch_3
    const-string p0, "byte[]"

    return-object p0

    :pswitch_4
    const-string p0, "double[]"

    return-object p0

    :pswitch_5
    const-string p0, "float[]"

    return-object p0

    :pswitch_6
    const-string p0, "char[]"

    return-object p0

    :pswitch_7
    const-string p0, "boolean[]"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getType(I)Lcom/tencent/matrix/resource/hproflib/model/Type;
    .locals 1

    .line 55
    sget-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->sTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/matrix/resource/hproflib/model/Type;
    .locals 1

    .line 26
    const-class v0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/matrix/resource/hproflib/model/Type;

    return-object p0
.end method

.method public static values()[Lcom/tencent/matrix/resource/hproflib/model/Type;
    .locals 1

    .line 26
    sget-object v0, Lcom/tencent/matrix/resource/hproflib/model/Type;->$VALUES:[Lcom/tencent/matrix/resource/hproflib/model/Type;

    invoke-virtual {v0}, [Lcom/tencent/matrix/resource/hproflib/model/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/matrix/resource/hproflib/model/Type;

    return-object v0
.end method


# virtual methods
.method public getSize(I)I
    .locals 1

    .line 59
    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/model/Type;->mSize:I

    if-eqz v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method public getTypeId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/tencent/matrix/resource/hproflib/model/Type;->mId:I

    return v0
.end method
