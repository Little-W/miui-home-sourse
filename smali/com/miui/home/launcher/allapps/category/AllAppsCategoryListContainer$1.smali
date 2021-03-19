.class Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$1;
.super Ljava/lang/Object;
.source "AllAppsCategoryListContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$1;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "is_drawer_setting"

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$1;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
