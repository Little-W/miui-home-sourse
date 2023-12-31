.class public Lcom/miui/home/launcher/allapps/category/fragment/PersonalCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;
.source "PersonalCategoryAppListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemInfoMatcher(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 0

    .line 9
    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->PERSONAL_MATCHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    return-object p0
.end method
