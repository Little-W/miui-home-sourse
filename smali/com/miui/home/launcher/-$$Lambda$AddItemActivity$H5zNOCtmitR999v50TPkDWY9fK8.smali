.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$H5zNOCtmitR999v50TPkDWY9fK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/AddItemActivity;

.field private final synthetic f$1:Landroid/appwidget/AppWidgetProviderInfo;

.field private final synthetic f$2:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AddItemActivity;Landroid/appwidget/AppWidgetProviderInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$H5zNOCtmitR999v50TPkDWY9fK8;->f$0:Lcom/miui/home/launcher/AddItemActivity;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$H5zNOCtmitR999v50TPkDWY9fK8;->f$1:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$H5zNOCtmitR999v50TPkDWY9fK8;->f$2:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$H5zNOCtmitR999v50TPkDWY9fK8;->f$0:Lcom/miui/home/launcher/AddItemActivity;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$H5zNOCtmitR999v50TPkDWY9fK8;->f$1:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$AddItemActivity$H5zNOCtmitR999v50TPkDWY9fK8;->f$2:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/AddItemActivity;->lambda$setupWidget$496(Lcom/miui/home/launcher/AddItemActivity;Landroid/appwidget/AppWidgetProviderInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
