.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$-M7VPghtas6F_hQyvTtalUE_s5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ItemIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$-M7VPghtas6F_hQyvTtalUE_s5w;->f$0:Lcom/miui/home/launcher/ItemIcon;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$-M7VPghtas6F_hQyvTtalUE_s5w;->f$0:Lcom/miui/home/launcher/ItemIcon;

    check-cast p1, Lcom/miui/home/launcher/IconContainer;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$removeFromItsContainer$65(Lcom/miui/home/launcher/ItemIcon;Lcom/miui/home/launcher/IconContainer;)V

    return-void
.end method
