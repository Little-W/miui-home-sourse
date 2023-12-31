.class final Lcom/miui/home/launcher/HideAppProvider$delete$1;
.super Ljava/lang/Object;
.source "HideAppProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/HideAppProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $selectionArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/launcher/HideAppProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/HideAppProvider;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/HideAppProvider$delete$1;->this$0:Lcom/miui/home/launcher/HideAppProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/HideAppProvider$delete$1;->$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/HideAppProvider$delete$1;->this$0:Lcom/miui/home/launcher/HideAppProvider;

    invoke-static {v0}, Lcom/miui/home/launcher/HideAppProvider;->access$getMHideAppList$p(Lcom/miui/home/launcher/HideAppProvider;)Lcom/miui/home/launcher/HideAppList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/HideAppProvider$delete$1;->this$0:Lcom/miui/home/launcher/HideAppProvider;

    invoke-virtual {v1}, Lcom/miui/home/launcher/HideAppProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/bean/HideAppBean;

    iget-object v3, p0, Lcom/miui/home/launcher/HideAppProvider$delete$1;->$selectionArgs:[Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object p0, p0, Lcom/miui/home/launcher/HideAppProvider$delete$1;->$selectionArgs:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, p0, v4

    const/4 v5, 0x2

    aget-object p0, p0, v5

    invoke-direct {v2, v3, v4, p0}, Lcom/miui/home/launcher/bean/HideAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/HideAppList;->deleteHiddenApp(Landroid/content/Context;Lcom/miui/home/launcher/bean/HideAppBean;)Z

    return-void
.end method
