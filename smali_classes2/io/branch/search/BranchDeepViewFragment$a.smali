.class public Lio/branch/search/BranchDeepViewFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchDeepViewFragment;->setUpHierarchy(Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lio/branch/search/BranchBaseLinkResult;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/view/View;Lio/branch/search/BranchBaseLinkResult;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment$a;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lio/branch/search/BranchDeepViewFragment$a;->b:Landroid/view/View;

    iput-object p3, p0, Lio/branch/search/BranchDeepViewFragment$a;->c:Lio/branch/search/BranchBaseLinkResult;

    iput-object p4, p0, Lio/branch/search/BranchDeepViewFragment$a;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lio/branch/search/BranchDeepViewFragment$a;->a:Landroid/os/Bundle;

    const-string v0, "handlers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/i;

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment$a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/BranchDeepViewFragment$a;->c:Lio/branch/search/BranchBaseLinkResult;

    invoke-virtual {v0, v1, v2}, Lio/branch/search/i;->a(Landroid/content/Context;Lio/branch/search/q;)Lio/branch/search/i$g;

    move-result-object v0

    iget-boolean v1, v0, Lio/branch/search/i$g;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment$a;->c:Lio/branch/search/BranchBaseLinkResult;

    iget-object v0, v0, Lio/branch/search/i$g;->b:Lorg/json/JSONObject;

    const-string v2, "deepview_cta"

    invoke-virtual {p1, v1, v2, v0}, Lio/branch/search/l;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lio/branch/search/BranchDeepViewFragment$a;->c:Lio/branch/search/BranchBaseLinkResult;

    iget-object p1, p1, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    const-string v0, "LINK_FAILED_TO_OPEN"

    invoke-static {v0, p1}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lio/branch/search/BranchDeepViewFragment$a;->d:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
