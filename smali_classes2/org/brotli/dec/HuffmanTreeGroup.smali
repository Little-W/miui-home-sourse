.class final Lorg/brotli/dec/HuffmanTreeGroup;
.super Ljava/lang/Object;
.source "HuffmanTreeGroup.java"


# instance fields
.field private alphabetSize:I

.field codes:[I

.field trees:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(Lorg/brotli/dec/HuffmanTreeGroup;Lorg/brotli/dec/BitReader;)V
    .locals 5

    .line 50
    iget-object v0, p0, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 52
    iget-object v3, p0, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    aput v2, v3, v1

    .line 53
    iget v3, p0, Lorg/brotli/dec/HuffmanTreeGroup;->alphabetSize:I

    iget-object v4, p0, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    invoke-static {v3, v4, v2, p1}, Lorg/brotli/dec/Decode;->readHuffmanCode(I[IILorg/brotli/dec/BitReader;)V

    add-int/lit16 v2, v2, 0x438

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static init(Lorg/brotli/dec/HuffmanTreeGroup;II)V
    .locals 0

    .line 37
    iput p1, p0, Lorg/brotli/dec/HuffmanTreeGroup;->alphabetSize:I

    mul-int/lit16 p1, p2, 0x438

    .line 38
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 39
    new-array p1, p2, [I

    iput-object p1, p0, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    return-void
.end method
