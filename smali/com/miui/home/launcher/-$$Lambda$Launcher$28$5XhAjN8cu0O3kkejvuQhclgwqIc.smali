.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$28$5XhAjN8cu0O3kkejvuQhclgwqIc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$28;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$28;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$28$5XhAjN8cu0O3kkejvuQhclgwqIc;->f$0:Lcom/miui/home/launcher/Launcher$28;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$28$5XhAjN8cu0O3kkejvuQhclgwqIc;->f$0:Lcom/miui/home/launcher/Launcher$28;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher$28;->lambda$onChange$1(Lcom/miui/home/launcher/Launcher$28;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
