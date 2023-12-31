.class public Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;
.super Ljava/lang/Object;
.source "MaMlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/MaMlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaMlDownloadParams"
.end annotation


# instance fields
.field private mamlDownloadUrl:Ljava/lang/String;

.field private mtzSizeInKb:I

.field private productId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->productId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->versionCode:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->mamlDownloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;)I
    .locals 0

    .line 117
    iget p0, p0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->mtzSizeInKb:I

    return p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;
    .locals 1

    .line 132
    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;

    invoke-direct {v0}, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;-><init>()V

    .line 133
    iput-object p0, v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->productId:Ljava/lang/String;

    .line 134
    iput-object p1, v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->title:Ljava/lang/String;

    .line 135
    iput-object p2, v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->mamlDownloadUrl:Ljava/lang/String;

    .line 136
    iput p3, v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->versionCode:I

    .line 137
    iput p4, v0, Lcom/miui/home/launcher/gadget/MaMlUtil$MaMlDownloadParams;->mtzSizeInKb:I

    return-object v0
.end method
