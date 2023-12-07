.class public interface abstract Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/BranchAppListDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBranchCompositeSearchCallBack"
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

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract refreshBaseRecyclerView()V
.end method
