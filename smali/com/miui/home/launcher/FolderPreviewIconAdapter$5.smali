.class Lcom/miui/home/launcher/FolderPreviewIconAdapter$5;
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
        "Lcom/miui/home/launcher/ShortcutInfo;",
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

    .line 68
    iput-object p1, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$5;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$5;->val$previewIconInfo:Ljava/util/ArrayList;

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

    .line 68
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderPreviewIconAdapter$5;->apply(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
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

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 73
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$5;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-static {v3}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->access$300(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$5;->this$0:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-static {v4}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->access$400(Lcom/miui/home/launcher/FolderPreviewIconAdapter;)Lcom/miui/home/launcher/IconCache;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/miui/home/launcher/FolderPreviewIconAdapter$5;->val$previewIconInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
