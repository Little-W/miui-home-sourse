.class Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;
.super Lcom/miui/home/launcher/util/Provider;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityInfoProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/util/Provider<",
        "Landroid/content/pm/LauncherActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/miui/home/launcher/IconCache;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/IconCache;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;->this$0:Lcom/miui/home/launcher/IconCache;

    invoke-direct {p0}, Lcom/miui/home/launcher/util/Provider;-><init>()V

    .line 380
    iput-object p2, p0, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;->mIntent:Landroid/content/Intent;

    .line 381
    iput-object p3, p0, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public get()Landroid/content/pm/LauncherActivityInfo;
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;->this$0:Lcom/miui/home/launcher/IconCache;

    invoke-static {v0}, Lcom/miui/home/launcher/IconCache;->access$000(Lcom/miui/home/launcher/IconCache;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;->mIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 374
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconCache$ActivityInfoProvider;->get()Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    return-object p0
.end method
