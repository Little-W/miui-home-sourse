.class public final Lcom/miui/home/launcher/folder/FolderIcon1x1$initNoWordAdapter$1;
.super Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;
.source "FolderIcon1x1.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIcon1x1;->initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon1x1;Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemIcon;",
            ")V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$initNoWordAdapter$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/util/noword/NoWordItemIconAdapter;-><init>(Lcom/miui/home/launcher/ItemIcon;)V

    return-void
.end method


# virtual methods
.method public canDrawForegroundTitle()Z
    .locals 1

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$initNoWordAdapter$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMPreviewContainer$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public viewChangeAlphaWhenEditModeChange()Landroid/view/View;
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1$initNoWordAdapter$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->access$getMPreviewContainer$p(Lcom/miui/home/launcher/folder/FolderIcon1x1;)Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
