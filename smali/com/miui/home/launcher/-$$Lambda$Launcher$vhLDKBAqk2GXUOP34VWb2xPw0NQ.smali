.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$vhLDKBAqk2GXUOP34VWb2xPw0NQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$vhLDKBAqk2GXUOP34VWb2xPw0NQ;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$vhLDKBAqk2GXUOP34VWb2xPw0NQ;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$bindWidgetsUpdated$45(Ljava/util/ArrayList;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result p1

    return p1
.end method
