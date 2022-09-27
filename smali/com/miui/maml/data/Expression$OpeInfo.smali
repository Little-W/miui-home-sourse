.class Lcom/miui/maml/data/Expression$OpeInfo;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Expression$OpeInfo$Parser;
    }
.end annotation


# static fields
.field private static final OPE_SIZE:I

.field private static final mOpePar:[I

.field private static final mOpePriority:[I

.field private static final mOpes:[Ljava/lang/String;


# instance fields
.field public participants:I

.field public priority:I

.field public str:Ljava/lang/String;

.field public unary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/16 v0, 0x14

    .line 36
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    .line 44
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePar:[I

    const-string v1, "+"

    const-string v2, "-"

    const-string v3, "*"

    const-string v4, "/"

    const-string v5, "%"

    const-string v6, "&"

    const-string/jumbo v7, "|"

    const-string v8, "^"

    const-string/jumbo v9, "~"

    const-string/jumbo v10, "{{"

    const-string/jumbo v11, "}}"

    const-string v12, "!"

    const-string v13, "=="

    const-string v14, "!="

    const-string v15, "**"

    const-string/jumbo v16, "||"

    const-string/jumbo v17, "}"

    const-string/jumbo v18, "}="

    const-string/jumbo v19, "{"

    const-string/jumbo v20, "{="

    .line 51
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/miui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x8
        0x9
        0xa
        0x2
        0x5
        0x5
        0x2
        0x7
        0x7
        0xb
        0xc
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 29
    sget v0, Lcom/miui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    return-object v0
.end method

.method public static getOpeInfo(I)Lcom/miui/maml/data/Expression$OpeInfo;
    .locals 2

    .line 106
    new-instance v0, Lcom/miui/maml/data/Expression$OpeInfo;

    invoke-direct {v0}, Lcom/miui/maml/data/Expression$OpeInfo;-><init>()V

    .line 107
    sget-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    aget v1, v1, p0

    iput v1, v0, Lcom/miui/maml/data/Expression$OpeInfo;->priority:I

    .line 108
    sget-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpePar:[I

    aget v1, v1, p0

    iput v1, v0, Lcom/miui/maml/data/Expression$OpeInfo;->participants:I

    .line 109
    sget-object v1, Lcom/miui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    aget-object p0, v1, p0

    iput-object p0, v0, Lcom/miui/maml/data/Expression$OpeInfo;->str:Ljava/lang/String;

    return-object v0
.end method
