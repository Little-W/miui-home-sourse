.class public final synthetic Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$nhpJL5tqILB5PsLbEjrnL8Vaa5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$nhpJL5tqILB5PsLbEjrnL8Vaa5Q;->f$0:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$nhpJL5tqILB5PsLbEjrnL8Vaa5Q;->f$0:Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->lambda$getIconAsync$0(Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
