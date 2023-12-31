.class public Lio/branch/search/BranchConfiguration$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchConfiguration;->a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/BranchConfiguration$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/branch/search/BranchConfiguration;

.field public final synthetic c:Lio/branch/search/BranchConfiguration$d;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchConfiguration;Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/BranchConfiguration$d;)V
    .locals 0

    iput-object p2, p0, Lio/branch/search/BranchConfiguration$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/branch/search/BranchConfiguration$c;->b:Lio/branch/search/BranchConfiguration;

    iput-object p4, p0, Lio/branch/search/BranchConfiguration$c;->c:Lio/branch/search/BranchConfiguration$d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const-string p1, "BranchConfiguration.fetchGAID"

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/branch/search/BranchConfiguration$c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/BranchConfiguration$c;->b:Lio/branch/search/BranchConfiguration;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lio/branch/search/BranchConfiguration;->d(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;

    iget-object p0, p0, Lio/branch/search/BranchConfiguration$c;->b:Lio/branch/search/BranchConfiguration;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lio/branch/search/BranchConfiguration;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "Could not find the play-services lib."

    invoke-static {p1, v1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {p1, p0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method public a(Ljava/lang/Void;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration$c;->c:Lio/branch/search/BranchConfiguration$d;

    invoke-interface {p0}, Lio/branch/search/BranchConfiguration$d;->a()V

    return-void
.end method

.method public b(Ljava/lang/Void;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchConfiguration$c;->c:Lio/branch/search/BranchConfiguration$d;

    invoke-interface {p0}, Lio/branch/search/BranchConfiguration$d;->a()V

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/branch/search/BranchConfiguration$c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/branch/search/BranchConfiguration$c;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/branch/search/BranchConfiguration$c;->b(Ljava/lang/Void;)V

    return-void
.end method
