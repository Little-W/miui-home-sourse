.class public final synthetic Lcom/miui/home/settings/preInstall/-$$Lambda$RestoreAppsHelper$fdzJDjbxfwIZwQkgUYNv1N7-zn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/settings/preInstall/RestoreAppsHelper;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/preInstall/RestoreAppsHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/preInstall/-$$Lambda$RestoreAppsHelper$fdzJDjbxfwIZwQkgUYNv1N7-zn0;->f$0:Lcom/miui/home/settings/preInstall/RestoreAppsHelper;

    iput-object p2, p0, Lcom/miui/home/settings/preInstall/-$$Lambda$RestoreAppsHelper$fdzJDjbxfwIZwQkgUYNv1N7-zn0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/settings/preInstall/-$$Lambda$RestoreAppsHelper$fdzJDjbxfwIZwQkgUYNv1N7-zn0;->f$0:Lcom/miui/home/settings/preInstall/RestoreAppsHelper;

    iget-object v1, p0, Lcom/miui/home/settings/preInstall/-$$Lambda$RestoreAppsHelper$fdzJDjbxfwIZwQkgUYNv1N7-zn0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/home/settings/preInstall/RestoreAppsHelper;->lambda$putAppListToSettings$0(Lcom/miui/home/settings/preInstall/RestoreAppsHelper;Landroid/content/Context;)V

    return-void
.end method
