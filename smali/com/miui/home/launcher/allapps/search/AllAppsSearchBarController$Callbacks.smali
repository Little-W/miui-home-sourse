.class public interface abstract Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
.super Ljava/lang/Object;
.source "AllAppsSearchBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract clearSearchResult()V
.end method

.method public abstract hideSearchPanel()V
.end method

.method public abstract onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSearchPanel()V
.end method
