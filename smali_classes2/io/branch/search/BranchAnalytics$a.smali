.class public Lio/branch/search/BranchAnalytics$a;
.super Ljava/lang/Object;

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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lio/branch/search/BranchAnalytics;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchAnalytics;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchAnalytics$a;->b:Lio/branch/search/BranchAnalytics;

    iput-object p2, p0, Lio/branch/search/BranchAnalytics$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 7

    iget-object v0, p0, Lio/branch/search/BranchAnalytics$a;->b:Lio/branch/search/BranchAnalytics;

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

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lio/branch/search/BranchAnalytics$a;->b:Lio/branch/search/BranchAnalytics;

    invoke-static {v0}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/BranchAnalytics;)Lio/branch/search/l;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/l;->j:Lio/branch/search/BranchConfiguration;

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    iget-object p1, p0, Lio/branch/search/BranchAnalytics$a;->b:Lio/branch/search/BranchAnalytics;

    invoke-static {p1}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/BranchAnalytics;)Lio/branch/search/l;

    move-result-object v5

    iget-object v6, p0, Lio/branch/search/BranchAnalytics$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lio/branch/search/c1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/q1;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)V

    return-void
.end method
