.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$KWN53bGr8huFxJnPk-G8NrukgE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$KWN53bGr8huFxJnPk-G8NrukgE8;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$KWN53bGr8huFxJnPk-G8NrukgE8;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$getPackageNames$34(Ljava/util/ArrayList;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
