.class public Lio/branch/search/i$h;
.super Lio/branch/search/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/i;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/i$h;->c:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/branch/search/i$h;->d:Landroid/os/UserHandle;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lio/branch/search/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/branch/search/i$h;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lio/branch/search/q;)Lio/branch/search/i$g;
    .locals 3

    invoke-interface {p2}, Lio/branch/search/q;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/i$h;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/branch/search/i$h;->d:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1, p2, v2}, Lio/branch/search/IBranchShortcutHandler;->launchShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lio/branch/search/i$g;->a(Lio/branch/search/i;)Lio/branch/search/i$g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lio/branch/search/i$g;->a()Lio/branch/search/i$g;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Lio/branch/search/q;)Z
    .locals 3

    invoke-interface {p2}, Lio/branch/search/q;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/i$h;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/branch/search/i$h;->d:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1, p2, v2}, Lio/branch/search/IBranchShortcutHandler;->validateShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method
