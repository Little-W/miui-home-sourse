.class public interface abstract Lio/branch/search/IBranchIntentHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract openApp(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startActivity(Landroid/content/Context;Landroid/content/Intent;)V
.end method
