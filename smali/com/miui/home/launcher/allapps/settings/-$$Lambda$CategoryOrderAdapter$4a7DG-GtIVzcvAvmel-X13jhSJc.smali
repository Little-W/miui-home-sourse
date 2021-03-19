.class public final synthetic Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$4a7DG-GtIVzcvAvmel-X13jhSJc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

.field private final synthetic f$1:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$4a7DG-GtIVzcvAvmel-X13jhSJc;->f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$4a7DG-GtIVzcvAvmel-X13jhSJc;->f$1:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$4a7DG-GtIVzcvAvmel-X13jhSJc;->f$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategoryOrderAdapter$4a7DG-GtIVzcvAvmel-X13jhSJc;->f$1:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->lambda$onBindViewHolder$2(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
