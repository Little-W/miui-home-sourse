.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;
.super Ljava/lang/Object;
.source "FolderIconPreviewContainer1X1.kt"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currentIndex:I

.field final synthetic $iconCache:Lcom/miui/home/launcher/IconCache;

.field final synthetic $isToggle:Z

.field final synthetic $si:Lcom/miui/home/launcher/ShortcutInfo;

.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/IconCache;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            "Lcom/miui/home/launcher/IconCache;",
            "ZI)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->$iconCache:Lcom/miui/home/launcher/IconCache;

    iput-boolean p4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->$isToggle:Z

    iput p5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->$currentIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 98
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    .line 99
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->$iconCache:Lcom/miui/home/launcher/IconCache;

    .line 100
    iget-boolean v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->$isToggle:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object v2

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->$currentIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 98
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got icon for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->$si:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " drawable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->this$0:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->access$canDrawableAnimating(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p1

    :cond_2
    :goto_1
    return-object v3
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;->apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
