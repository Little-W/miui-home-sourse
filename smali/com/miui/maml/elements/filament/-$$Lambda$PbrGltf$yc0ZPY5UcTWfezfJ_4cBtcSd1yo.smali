.class public final synthetic Lcom/miui/maml/elements/filament/-$$Lambda$PbrGltf$yc0ZPY5UcTWfezfJ_4cBtcSd1yo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final synthetic f$0:Lcom/miui/maml/elements/filament/PbrGltf;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/maml/elements/filament/PbrGltf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/filament/-$$Lambda$PbrGltf$yc0ZPY5UcTWfezfJ_4cBtcSd1yo;->f$0:Lcom/miui/maml/elements/filament/PbrGltf;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/-$$Lambda$PbrGltf$yc0ZPY5UcTWfezfJ_4cBtcSd1yo;->f$0:Lcom/miui/maml/elements/filament/PbrGltf;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/maml/elements/filament/PbrGltf;->lambda$init$0(Lcom/miui/maml/elements/filament/PbrGltf;Ljava/lang/String;)Ljava/nio/Buffer;

    move-result-object p1

    return-object p1
.end method
