.class public final synthetic Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategorySettingFragment$ygiZRw6GugJ0Xa1JUzd7kIUJko8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategorySettingFragment$ygiZRw6GugJ0Xa1JUzd7kIUJko8;->f$0:Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;

    iput p2, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategorySettingFragment$ygiZRw6GugJ0Xa1JUzd7kIUJko8;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategorySettingFragment$ygiZRw6GugJ0Xa1JUzd7kIUJko8;->f$0:Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;

    iget v1, p0, Lcom/miui/home/launcher/allapps/settings/-$$Lambda$CategorySettingFragment$ygiZRw6GugJ0Xa1JUzd7kIUJko8;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;->lambda$removeCategory$356(Lcom/miui/home/launcher/allapps/settings/CategorySettingFragment;ILandroid/content/DialogInterface;I)V

    return-void
.end method
