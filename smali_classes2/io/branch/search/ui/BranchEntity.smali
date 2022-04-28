.class public interface abstract Lio/branch/search/ui/BranchEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getPrimaryImage()Lio/branch/search/ui/Image;
.end method

.method public abstract getSecondaryImage()Lio/branch/search/ui/Image;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract open(Landroid/content/Context;)Lio/branch/search/BranchError;
.end method
