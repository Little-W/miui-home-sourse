.class public final synthetic Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$yvvjoLGmSlv7aFNrmxEgjH0sdWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$yvvjoLGmSlv7aFNrmxEgjH0sdWk;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$yvvjoLGmSlv7aFNrmxEgjH0sdWk;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->lambda$getIconAsync$1(Ljava/util/function/Consumer;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
