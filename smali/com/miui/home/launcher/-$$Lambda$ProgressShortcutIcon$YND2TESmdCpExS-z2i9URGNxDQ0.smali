.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$YND2TESmdCpExS-z2i9URGNxDQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

.field private final synthetic f$1:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$YND2TESmdCpExS-z2i9URGNxDQ0;->f$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$YND2TESmdCpExS-z2i9URGNxDQ0;->f$1:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$YND2TESmdCpExS-z2i9URGNxDQ0;->f$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$YND2TESmdCpExS-z2i9URGNxDQ0;->f$1:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->lambda$startAfterDropAnimation$2(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Landroid/animation/ValueAnimator;)V

    return-void
.end method
