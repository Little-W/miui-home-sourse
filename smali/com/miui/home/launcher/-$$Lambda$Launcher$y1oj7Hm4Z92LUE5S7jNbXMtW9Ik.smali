.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$y1oj7Hm4Z92LUE5S7jNbXMtW9Ik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutInfo;

.field private final synthetic f$1:Lcom/miui/home/launcher/Application;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$y1oj7Hm4Z92LUE5S7jNbXMtW9Ik;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$y1oj7Hm4Z92LUE5S7jNbXMtW9Ik;->f$1:Lcom/miui/home/launcher/Application;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$y1oj7Hm4Z92LUE5S7jNbXMtW9Ik;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$y1oj7Hm4Z92LUE5S7jNbXMtW9Ik;->f$1:Lcom/miui/home/launcher/Application;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->lambda$addToAppsList$56(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Application;)V

    return-void
.end method