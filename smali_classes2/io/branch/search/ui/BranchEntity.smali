.class public interface abstract Lio/branch/search/ui/BranchEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/ui/BranchEntity$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getPrimaryImage()Lio/branch/search/ui/ImageLoadingStrategy;
.end method

.method public abstract getSecondaryImage()Lio/branch/search/ui/ImageLoadingStrategy;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract open(Landroid/content/Context;)Lio/branch/search/BranchError;
.end method

.method public abstract open(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchError;
.end method
