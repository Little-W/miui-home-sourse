.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$KAcowXR_Iv5gDEcuQjzLdA0XsWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$KAcowXR_Iv5gDEcuQjzLdA0XsWw;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$KAcowXR_Iv5gDEcuQjzLdA0XsWw;->f$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->lambda$updateDarkModeIfScreenModeChange$66(Lcom/miui/home/launcher/Launcher;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
