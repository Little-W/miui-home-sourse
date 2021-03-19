.class Lcom/miui/home/launcher/FolderIcon$7;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lio/reactivex2/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex2/functions/Function<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$si:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderIcon$7;->val$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$500(Lcom/miui/home/launcher/FolderIcon;)I

    move-result v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$600(Lcom/miui/home/launcher/FolderIcon;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/FolderIcon;->access$700(Lcom/miui/home/launcher/FolderIcon;Landroid/content/res/Resources;)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    .line 313
    invoke-static {v1}, Lcom/miui/home/launcher/FolderIcon;->access$500(Lcom/miui/home/launcher/FolderIcon;)I

    move-result v1

    .line 312
    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/common/Utilities;->drawable2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 317
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$7;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 318
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$7;->val$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 306
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon$7;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
