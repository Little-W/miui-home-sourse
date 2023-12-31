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
    .locals 4
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

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

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
.method public a(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/i$g;
    .locals 2

    invoke-interface {p2}, Lio/branch/search/q;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object p3

    iget-object v0, p0, Lio/branch/search/i$h;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/i$h;->d:Landroid/os/UserHandle;

    invoke-interface {p3, p1, v0, p2, v1}, Lio/branch/search/IBranchShortcutHandler;->launchShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lio/branch/search/i$g;->a(Lio/branch/search/i;)Lio/branch/search/i$g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lio/branch/search/i$g;->a()Lio/branch/search/i$g;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;Lio/branch/search/q;Lio/branch/search/IBranchIntentHandler;)Z
    .locals 1

    invoke-interface {p2}, Lio/branch/search/q;->getDestinationPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object p3

    iget-object v0, p0, Lio/branch/search/i$h;->c:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/i$h;->d:Landroid/os/UserHandle;

    invoke-interface {p3, p1, v0, p2, p0}, Lio/branch/search/IBranchShortcutHandler;->validateShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
