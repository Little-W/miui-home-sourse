.class Lorg/brotli/dec/Dictionary$DataHolder;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brotli/dec/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataHolder"
.end annotation


# static fields
.field private static final DATA:[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const v0, 0x1dfa0

    .line 47
    new-array v0, v0, [B

    sput-object v0, Lorg/brotli/dec/Dictionary$DataHolder;->DATA:[B

    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lorg/brotli/dec/Dictionary$DataHolder0;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lorg/brotli/dec/Dictionary$DataHolder1;->access$100()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {}, Lorg/brotli/dec/Dictionary$DataHolder2;->access$200()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 50
    array-length v1, v0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_0
    sget-object v1, Lorg/brotli/dec/Dictionary$DataHolder;->DATA:[B

    array-length v1, v1

    if-ne v4, v1, :cond_3

    .line 57
    array-length v1, v0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    move v6, v4

    move v4, v2

    .line 58
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 59
    sget-object v7, Lorg/brotli/dec/Dictionary$DataHolder;->DATA:[B

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1

    :cond_2
    return-void

    .line 54
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Corrupted brotli dictionary"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 43
    sget-object v0, Lorg/brotli/dec/Dictionary$DataHolder;->DATA:[B

    return-object v0
.end method
