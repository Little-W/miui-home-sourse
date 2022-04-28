.class public Lio/branch/search/BranchAnalytics$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/BranchAnalytics$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchAnalytics;->onMoveToBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/BranchAnalytics;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchAnalytics;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchAnalytics$a;->a:Lio/branch/search/BranchAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lio/branch/search/BranchAnalytics$a;->a:Lio/branch/search/BranchAnalytics;

    invoke-static {v0}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/BranchAnalytics;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLOBAL_GARBAGE_STRING_VAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lio/branch/search/a;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lio/branch/search/BranchAnalytics;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/search/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lio/branch/search/BranchAnalytics$a;->a:Lio/branch/search/BranchAnalytics;

    invoke-static {v0}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/BranchAnalytics;)Lio/branch/search/l;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/l;->i:Lio/branch/search/BranchConfiguration;

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/branch/search/e5;->l:Lio/branch/search/e5;

    iget-object v2, p0, Lio/branch/search/BranchAnalytics$a;->a:Lio/branch/search/BranchAnalytics;

    invoke-static {v2}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/BranchAnalytics;)Lio/branch/search/l;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lio/branch/search/p0;->a(Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/search/e1;Lio/branch/search/e5;Lio/branch/search/l;)V

    return-void
.end method
