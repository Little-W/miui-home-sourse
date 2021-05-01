.class Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;
.super Ljava/lang/Object;
.source "FolderPreviewIconAdapter.java"

# interfaces
.implements Lio/reactivex2/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderPreviewIconAdapter;->refresh(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex2/functions/Function<",
        "Ljava/util/ArrayList<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Ljava/util/ArrayList<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

.field final synthetic val$previewIconInfo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderPreviewIconAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;->val$previewIconInfo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;->apply(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 101
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-static {v2}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->access$100(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    .line 103
    invoke-static {v3}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->access$200(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)I

    move-result v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/common/Utilities;->drawable2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-static {v4}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->access$300(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 109
    iget-object v2, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$3;->val$previewIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
