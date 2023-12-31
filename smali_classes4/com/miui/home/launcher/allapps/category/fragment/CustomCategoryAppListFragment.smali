.class public Lcom/miui/home/launcher/allapps/category/fragment/CustomCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;
.source "CustomCategoryAppListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItemInfoMatcher(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofCategory(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object p0

    return-object p0
.end method
