.class public Lio/branch/search/i$i;
.super Lio/branch/search/i$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/i$l;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "package"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/i$i;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/i$i;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Z
    .locals 1

    iget-object v0, p0, Lio/branch/search/i$i;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/branch/search/Util;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lio/branch/search/i$l;->b(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Z

    move-result p0

    return p0
.end method
