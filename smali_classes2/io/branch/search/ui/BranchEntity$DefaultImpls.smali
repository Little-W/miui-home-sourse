.class public final Lio/branch/search/ui/BranchEntity$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/ui/BranchEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static open(Lio/branch/search/ui/BranchEntity;Landroid/content/Context;)Lio/branch/search/BranchError;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, p1, v0}, Lio/branch/search/ui/BranchEntity;->open(Landroid/content/Context;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/BranchError;

    move-result-object p0

    return-object p0
.end method
