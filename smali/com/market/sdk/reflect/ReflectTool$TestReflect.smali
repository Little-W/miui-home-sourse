.class Lcom/market/sdk/reflect/ReflectTool$TestReflect;
.super Ljava/lang/Object;
.source "ReflectTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/reflect/ReflectTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestReflect"
.end annotation


# static fields
.field private static final STATIC:I = 0x141


# instance fields
.field private mTestArray:[I

.field private mTestField:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The quick fox jumps over the lazy dogs."

    .line 225
    iput-object v0, p0, Lcom/market/sdk/reflect/ReflectTool$TestReflect;->mTestField:Ljava/lang/String;

    const/4 v0, 0x5

    .line 226
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/market/sdk/reflect/ReflectTool$TestReflect;->mTestArray:[I

    .line 227
    iget-object v1, p0, Lcom/market/sdk/reflect/ReflectTool$TestReflect;->mTestArray:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x2

    .line 228
    aput v3, v1, v2

    const/4 v2, 0x3

    .line 229
    aput v2, v1, v3

    const/4 v3, 0x4

    .line 230
    aput v3, v1, v2

    .line 231
    aput v0, v1, v3

    return-void
.end method


# virtual methods
.method public concat([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 245
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sum([I)I
    .locals 4

    .line 236
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
