.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Value"
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    iput-object p5, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    iput-object p6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public getFile(I)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    aget-object p0, p0, p1

    return-object p0
.end method
