.class Lcom/miui/home/launcher/FolderIcon$5;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava8/util/function/Function;


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
        "Ljava8/util/function/Function<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$currentIndex:I

.field final synthetic val$isToggle:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;ZI)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderIcon$5;->val$isToggle:Z

    iput p3, p0, Lcom/miui/home/launcher/FolderIcon$5;->val$currentIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderIcon;->access$300(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/FolderIcon$5;->val$isToggle:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    .line 285
    invoke-static {v2}, Lcom/miui/home/launcher/FolderIcon;->access$400(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object v2

    iget v4, p0, Lcom/miui/home/launcher/FolderIcon$5;->val$currentIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 284
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderIcon;->access$500(Lcom/miui/home/launcher/FolderIcon;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderIcon;->access$600(Lcom/miui/home/launcher/FolderIcon;)I

    move-result v1

    if-nez v1, :cond_3

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderIcon;->access$700(Lcom/miui/home/launcher/FolderIcon;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/FolderIcon;->access$800(Lcom/miui/home/launcher/FolderIcon;Landroid/content/res/Resources;)V

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderIcon;->access$500(Lcom/miui/home/launcher/FolderIcon;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    .line 293
    invoke-static {v2}, Lcom/miui/home/launcher/FolderIcon;->access$600(Lcom/miui/home/launcher/FolderIcon;)I

    move-result v2

    .line 292
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/common/Utilities;->drawable2Bitmap(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v3

    .line 297
    :cond_4
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon$5;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 298
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 281
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon$5;->apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
