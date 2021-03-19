.class Lcom/miui/home/launcher/FolderIcon$9;
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
        "Lcom/miui/home/launcher/ShortcutInfo;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$currentIndex:I

.field final synthetic val$isToggle:Z

.field final synthetic val$si:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ShortcutInfo;ZI)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$9;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/FolderIcon$9;->val$si:Lcom/miui/home/launcher/ShortcutInfo;

    iput-boolean p3, p0, Lcom/miui/home/launcher/FolderIcon$9;->val$isToggle:Z

    iput p4, p0, Lcom/miui/home/launcher/FolderIcon$9;->val$currentIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$9;->val$si:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$9;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon$9;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderIcon;->access$800(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/home/launcher/FolderIcon$9;->val$isToggle:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon$9;->this$0:Lcom/miui/home/launcher/FolderIcon;

    .line 292
    invoke-static {v2}, Lcom/miui/home/launcher/FolderIcon;->access$300(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/FolderIcon$9;->val$currentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 291
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/ShortcutInfo;->getIconDrawable(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon$9;->apply(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
