.class Lcom/miui/home/launcher/ThumbnailContainer$2;
.super Ljava/lang/Object;
.source "ThumbnailContainer.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ThumbnailContainer;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ThumbnailContainer;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ThumbnailContainer;I)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer$2;->this$0:Lcom/miui/home/launcher/ThumbnailContainer;

    iput p2, p0, Lcom/miui/home/launcher/ThumbnailContainer$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailContainer$2;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer$2;->this$0:Lcom/miui/home/launcher/ThumbnailContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/home/launcher/ThumbnailContainer$2;->val$index:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const v1, 0x7f100067

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
