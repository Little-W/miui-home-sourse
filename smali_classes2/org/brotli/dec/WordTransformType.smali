.class final enum Lorg/brotli/dec/WordTransformType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/brotli/dec/WordTransformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/brotli/dec/WordTransformType;

.field public static final enum IDENTITY:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_FIRST_1:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_FIRST_2:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_FIRST_3:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_FIRST_4:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_FIRST_5:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_FIRST_6:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_FIRST_7:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_FIRST_9:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_LAST_1:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_LAST_2:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_LAST_3:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_LAST_4:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_LAST_5:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_LAST_6:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_LAST_7:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_LAST_8:Lorg/brotli/dec/WordTransformType;

.field public static final enum OMIT_LAST_9:Lorg/brotli/dec/WordTransformType;

.field public static final enum UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

.field public static final enum UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;


# instance fields
.field final omitFirst:I

.field final omitLast:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/4 v1, 0x0

    const-string v2, "IDENTITY"

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/4 v2, 0x1

    const-string v3, "OMIT_LAST_1"

    invoke-direct {v0, v3, v2, v1, v2}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_1:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/4 v3, 0x2

    const-string v4, "OMIT_LAST_2"

    invoke-direct {v0, v4, v3, v1, v3}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_2:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/4 v4, 0x3

    const-string v5, "OMIT_LAST_3"

    invoke-direct {v0, v5, v4, v1, v4}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_3:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/4 v5, 0x4

    const-string v6, "OMIT_LAST_4"

    invoke-direct {v0, v6, v5, v1, v5}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_4:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/4 v6, 0x5

    const-string v7, "OMIT_LAST_5"

    invoke-direct {v0, v7, v6, v1, v6}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_5:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/4 v7, 0x6

    const-string v8, "OMIT_LAST_6"

    invoke-direct {v0, v8, v7, v1, v7}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_6:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/4 v8, 0x7

    const-string v9, "OMIT_LAST_7"

    invoke-direct {v0, v9, v8, v1, v8}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_7:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/16 v9, 0x8

    const-string v10, "OMIT_LAST_8"

    invoke-direct {v0, v10, v9, v1, v9}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_8:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/16 v10, 0x9

    const-string v11, "OMIT_LAST_9"

    invoke-direct {v0, v11, v10, v1, v10}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_9:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/16 v11, 0xa

    const-string v12, "UPPERCASE_FIRST"

    invoke-direct {v0, v12, v11, v1, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/16 v12, 0xb

    const-string v13, "UPPERCASE_ALL"

    invoke-direct {v0, v13, v12, v1, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/16 v13, 0xc

    const-string v14, "OMIT_FIRST_1"

    invoke-direct {v0, v14, v13, v2, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_1:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/16 v14, 0xd

    const-string v15, "OMIT_FIRST_2"

    invoke-direct {v0, v15, v14, v3, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_2:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const/16 v15, 0xe

    const-string v14, "OMIT_FIRST_3"

    invoke-direct {v0, v14, v15, v4, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_3:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const-string v14, "OMIT_FIRST_4"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15, v5, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_4:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const-string v14, "OMIT_FIRST_5"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15, v6, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_5:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const-string v14, "OMIT_FIRST_6"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15, v7, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_6:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const-string v14, "OMIT_FIRST_7"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15, v8, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_7:Lorg/brotli/dec/WordTransformType;

    new-instance v0, Lorg/brotli/dec/WordTransformType;

    const-string v14, "OMIT_FIRST_9"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15, v10, v1}, Lorg/brotli/dec/WordTransformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_9:Lorg/brotli/dec/WordTransformType;

    const/16 v0, 0x14

    new-array v0, v0, [Lorg/brotli/dec/WordTransformType;

    sget-object v14, Lorg/brotli/dec/WordTransformType;->IDENTITY:Lorg/brotli/dec/WordTransformType;

    aput-object v14, v0, v1

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_1:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_2:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_3:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_4:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_5:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_6:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_7:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_8:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_LAST_9:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/brotli/dec/WordTransformType;->UPPERCASE_FIRST:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/brotli/dec/WordTransformType;->UPPERCASE_ALL:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_1:Lorg/brotli/dec/WordTransformType;

    aput-object v1, v0, v13

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_2:Lorg/brotli/dec/WordTransformType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_3:Lorg/brotli/dec/WordTransformType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_4:Lorg/brotli/dec/WordTransformType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_5:Lorg/brotli/dec/WordTransformType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_6:Lorg/brotli/dec/WordTransformType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_7:Lorg/brotli/dec/WordTransformType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/brotli/dec/WordTransformType;->OMIT_FIRST_9:Lorg/brotli/dec/WordTransformType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lorg/brotli/dec/WordTransformType;->$VALUES:[Lorg/brotli/dec/WordTransformType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/brotli/dec/WordTransformType;->omitFirst:I

    iput p4, p0, Lorg/brotli/dec/WordTransformType;->omitLast:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/brotli/dec/WordTransformType;
    .locals 1

    const-class v0, Lorg/brotli/dec/WordTransformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/brotli/dec/WordTransformType;

    return-object p0
.end method

.method public static values()[Lorg/brotli/dec/WordTransformType;
    .locals 1

    sget-object v0, Lorg/brotli/dec/WordTransformType;->$VALUES:[Lorg/brotli/dec/WordTransformType;

    invoke-virtual {v0}, [Lorg/brotli/dec/WordTransformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/brotli/dec/WordTransformType;

    return-object v0
.end method
