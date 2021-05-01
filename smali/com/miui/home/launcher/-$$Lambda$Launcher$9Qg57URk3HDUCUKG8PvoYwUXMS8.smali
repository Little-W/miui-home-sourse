.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$9Qg57URk3HDUCUKG8PvoYwUXMS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$9Qg57URk3HDUCUKG8PvoYwUXMS8;->f$0:Lcom/miui/home/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$9Qg57URk3HDUCUKG8PvoYwUXMS8;->f$0:Lcom/miui/home/launcher/AppInfo;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$null$80(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result p1

    return p1
.end method
