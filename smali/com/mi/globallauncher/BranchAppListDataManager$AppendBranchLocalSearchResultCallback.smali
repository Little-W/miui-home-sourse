.class public interface abstract Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;
.super Ljava/lang/Object;
.source "BranchAppListDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/BranchAppListDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppendBranchLocalSearchResultCallback"
.end annotation


# virtual methods
.method public abstract adapterItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refreshBaseRecyclerView()V
.end method
