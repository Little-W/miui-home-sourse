.class public Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/content/Context;)V
    .locals 1

    .line 88
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p2, p1, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method
