.class Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryUpdateListener"
.end annotation


# instance fields
.field private final mFolderInfoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;->mFolderInfoRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAppCategoryNameLoaded(Ljava/lang/String;)V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;->mFolderInfoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_0

    return-void

    .line 660
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    return-void
.end method
