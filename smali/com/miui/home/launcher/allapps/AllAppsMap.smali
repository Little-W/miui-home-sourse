.class public Lcom/miui/home/launcher/allapps/AllAppsMap;
.super Ljava/util/HashMap;
.source "AllAppsMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/miui/home/launcher/util/ComponentKey;",
        "Lcom/miui/home/launcher/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/AppInfo;
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsMap;->mEnable:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lcom/miui/home/launcher/util/ComponentKey;

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsMap;->put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsMap;->mEnable:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-super {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsMap;->mEnable:Z

    if-eq v0, p1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsMap;->clear()V

    .line 19
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsMap;->mEnable:Z

    return-void
.end method
