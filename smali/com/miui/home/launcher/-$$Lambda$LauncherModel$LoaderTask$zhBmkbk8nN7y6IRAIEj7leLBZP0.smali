.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$zhBmkbk8nN7y6IRAIEj7leLBZP0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$zhBmkbk8nN7y6IRAIEj7leLBZP0;->f$0:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$zhBmkbk8nN7y6IRAIEj7leLBZP0;->f$0:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->lambda$loadAppWidget$91(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method