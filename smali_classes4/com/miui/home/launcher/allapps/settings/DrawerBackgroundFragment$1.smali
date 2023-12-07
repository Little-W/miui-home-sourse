.class Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "DrawerBackgroundFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;Landroid/content/Context;IIZ)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment$1;->this$0:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
