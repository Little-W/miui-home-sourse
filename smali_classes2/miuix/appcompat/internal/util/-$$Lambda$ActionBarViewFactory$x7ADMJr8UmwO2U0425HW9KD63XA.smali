.class public final synthetic Lmiuix/appcompat/internal/util/-$$Lambda$ActionBarViewFactory$x7ADMJr8UmwO2U0425HW9KD63XA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/appcompat/widget/AppCompatImageView;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/util/-$$Lambda$ActionBarViewFactory$x7ADMJr8UmwO2U0425HW9KD63XA;->f$0:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lmiuix/appcompat/internal/util/-$$Lambda$ActionBarViewFactory$x7ADMJr8UmwO2U0425HW9KD63XA;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/util/-$$Lambda$ActionBarViewFactory$x7ADMJr8UmwO2U0425HW9KD63XA;->f$0:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p0, p0, Lmiuix/appcompat/internal/util/-$$Lambda$ActionBarViewFactory$x7ADMJr8UmwO2U0425HW9KD63XA;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->lambda$generateTitleUpView$0(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V

    return-void
.end method
